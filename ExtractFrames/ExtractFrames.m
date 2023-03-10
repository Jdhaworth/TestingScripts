function ExtractFrames(video_name,num_samples,target_directory)
%videoname: the title of the video file that is to be extracted from
%num_samples: The number of frames that will be extracted (will be evenly sampled)
 %Import video into vid variable
 vid=VideoReader(video_name);
 %Extract the total number of frames from video
 n = vid.NumFrames;
 %Calculates the sampling frequency based on total number of frames desired
 sampling = floor(n/num_samples);
 %Loops through the video sampling frames and saving them to a file
 for i = 1:sampling:n
     %Read frame from video based on current frame number
     frames = read(vid,i);
     %Compile path, file name, and frame number
     savefile = target_directory + '/ExtractedFrame_' + int2str(i) + '.jpg';
     %Write frame to file
     imwrite(frames, savefile);
 end
end